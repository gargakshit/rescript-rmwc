%%raw(`
import "./index.css";
import "@rmwc/button/styles";
import "@rmwc/card/styles";
import "@rmwc/typography/styles";
`)

let root = ReactDOM.querySelector("#root")

switch root {
| None => ()
| Some(el) => ReactDOM.render(<App />, el)
}