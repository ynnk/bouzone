var sources = process.argv.slice(2,process.argv.length -1)
var dest = process.argv.slice(process.argv.length -1)[0]
var fs = require('fs')
var jade = require('jade')
var babel = require('jade-babel')
jade = babel({}, jade);

for( i in sources) {
    var source = sources[i];
    var file = source.substring(source.lastIndexOf('/')+1)
    
    var target = dest + "/" + file.split('.')[0] + '.html'

    console.log("compiling %s to %s", source, target)
    fs.writeFile(target, jade.renderFile(source), function(err, data){
        if (err) return console.log(err);
    })
}



