use std::process::Command;
use structopt::StructOpt;
use exitfailure::ExitFailure;

mod stack;

#[derive(StructOpt)]
struct Cli {
	#[structopt(parse(from_os_str))]
	source: std::path::PathBuf,
}

fn main() -> Result<(), ExitFailure> {
	let args     = Cli::from_args();
	let compiler = stack::Stack::new();

	let source = match std::fs::read_to_string(args.source) {
		Err(error) => return Err(error.into()),
		Ok(source) => source,
	};

	compiler.cmp(source, "output.c");

	let gcc = Command::new("gcc")
	                  .arg("-w")
					  .arg("output.c")
					  .output()
					  .expect("Could not compile C code");

	Ok(())
}
