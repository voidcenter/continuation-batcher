use auto_circuits_batcher::appbuilder::AppBuilder;
use auto_circuits_batcher::args::ArgBuilder;
use auto_circuits_batcher::command::CommandBuilder;

struct CircuitBatcherApp;

impl ArgBuilder for CircuitBatcherApp {
    /*
    fn parse_aggregate_private_args(matches: &ArgMatches) -> Vec<Vec<u64>> {
        vec![]
    }
    */
}
impl CommandBuilder for CircuitBatcherApp {}
impl AppBuilder for CircuitBatcherApp {
    const NAME: &'static str = "auto-circuit-batcher";
    const VERSION: &'static str = "v0.1-beta";
    const AGGREGATE_K: u32 = 21;
    const MAX_PUBLIC_INPUT_SIZE: usize = 64;

    const N_PROOFS: usize = 1;
}

/// Simple program to greet a person
fn main() {
    let app = CircuitBatcherApp::app_builder();

    CircuitBatcherApp::exec(app)
}