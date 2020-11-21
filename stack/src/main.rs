use std::fs::remove_file;
use structopt::StructOpt;
use exitfailure::ExitFailure;

mod stack;

use stack::{Stack, code};

#[derive(StructOpt)]
struct Cli {
	option: String,

	#[structopt(parse(from_os_str))]
	source: std::path::PathBuf,
}

fn main() -> Result<(), ExitFailure> {
	let args     = Cli::from_args();
	
	let source = match std::fs::read_to_string(args.source) {
		Err(error) => return Err(error.into()),
		Ok(source) => source,
	};

	let mut compiler = Stack::new(source);

	compiler.cmp();

	if args.option.eq("run") {
		remove_file("output");
	}

	Ok(())
}
