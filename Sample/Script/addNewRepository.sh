#!/bin/bash

NAME=$1

# Dependency, Parent 파일 경로
DEPENDENCY_FILE="./Tuist/ProjectDescriptionHelpers/Extension/Dependency+Data.swift"
PARENT_MODULE="./Projects/Data/Data/Project.swift"

# 이름 전달 확인
if [ -z "$NAME" ]; then
    echo "🔴 모듈명이 제대로 들어오지 않았습니다. 🔴"
    exit 1
fi

# Dependency 파일이 존재하는지 확인
if [ ! -f "$DEPENDENCY_FILE" ]; then
    echo "🔴 $DEPENDENCY_FILE 이 없습니다."
    exit 1
fi

# Parent 파일이 존재하는지 확인
if [ ! -f "$PARENT_MODULE" ]; then
    echo "🔴 $PARENT_MODULE 이 없습니다."
    exit 1
fi

# Data에 추가할 Dependency
NEW_DATA_DEPENDENCY="        .Data.$NAME.implement,"

echo "🔧 Dependency+Data.swift에 새로운 의존성을 추가합니다..."

# Data Dependency 추가 (마지막 } 앞에 추가)
sed -i '' '/^public extension TargetDependency\.Data {$/,/^}$/{
    /^}$/{
        i\

        i\
    struct '"${NAME}"' {\
        private static let name = "'"${NAME}"'Repository"\
        public static let implement = dataDependency(target: name)\
        public static let interface = dataInterfaceDependency(target: name)\
    }
    }
}' "$DEPENDENCY_FILE"

echo "🔧 Data/Project.swift에 의존성을 추가합니다..."

# Data에 의존성 추가
if grep -q "dependencies: \[" "$PARENT_MODULE"; then
    # dependencies 배열의 마지막 항목 뒤에 추가
    sed -i '' "/dependencies: \[/,/\]/ {
        /\]/ i\\
$NEW_DATA_DEPENDENCY
    }" "$PARENT_MODULE"
else
    echo "🔴 dependencies 배열을 찾을 수 없습니다."
    exit 1
fi

echo "✅ ${NAME}Repository 의존성이 성공적으로 추가되었습니다!"
