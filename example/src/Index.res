%%raw(`
import "./index.css";

import "@rmwc/button/styles";
import "@rmwc/card/styles";
import "@rmwc/typography/styles";
import "@rmwc/avatar/styles";
import "@rmwc/icon/styles";
import "@rmwc/circular-progress/styles";
import "@rmwc/linear-progress/styles";
import "@rmwc/tooltip/styles";
import "@rmwc/textfield/styles";
import "@rmwc/dialog/styles";
`)

let root = ReactDOM.querySelector("#root")

switch root {
| None => ()
| Some(el) => ReactDOM.render(<App />, el)
}
