use std::fs::File;

pub type code = String;

pub struct Stack {
    compile: bool,
    source: code
}

impl Stack {
    pub fn new(src: String) -> Stack {
        return Stack{ compile: true, source: src };
    }
    //constructor

    pub fn cmp(&mut self) -> () {
        let mut file = File::create("output.c");
        //create output file

        let src: code = self.source.clone();

        for line in src.split("\n") {
            let mut Line  = line;
            let mut index = 0;

            for word in line.split(" ") {
                if word.eq("import") {}
			}
		}

        return;
    }
}