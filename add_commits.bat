@echo off
git checkout dev

for /l %%i in (1,1,80) do (
    echo update %%i >> dev.txt
    git add .
    git commit -m "docs: 업데이트 %%i"
)

git push origin dev
echo 완료!