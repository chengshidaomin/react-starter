# 清理上个版本
rm -rf __deployme
mkdir __deployme
# 构建
sh scripts/build.sh

# js压缩 npm install uglify-js -g
uglifyjs  bundle.js  -o __deployme/bundle.js --source-map __deployme/bundle.js.map
# css压缩 npm install -g cssshrink
cssshrink bundle.css > __deployme/bundle.css
# 拷贝html和图片
cp index.html __deployme/index.html
cp -r images/ __deployme/images/
# done
date; echo;
