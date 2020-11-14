pub type code = String;

pub struct Stack {
    compile: bool,
    source: String
}

impl Stack {
    pub fn new(src: String) -> Stack {
        return Stack{ compile: true, source: src };
    }
    //constructor

    pub fn cmp() -> code {
        //TODO: program compiler
        return "Code, compiled".to_string();
    }
}