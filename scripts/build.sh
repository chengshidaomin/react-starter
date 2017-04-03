# 将js/source目录下的js文件翻译后生成到js/build目录下
babel --presets react,es2015 --plugins transform-class-properties js/source -d js/build
# 将翻译后的文件拼接起来，生成bundle.js
browserify js/build/app.js -o bundle.js
# 所有的css文件合并成bunlde.css
cat css/*/* css/*.css | sed 's/..\/..\/images/images/g' > bundle.css
date;echo;
