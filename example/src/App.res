open Belt
open RescriptRmwc.RMWC

@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0)

  <div>
    <RMWC.Button
      raised={true}
      onClick={() => {
        setCount(c => c + 1)
      }}>
      {("Clicked " ++ count->Int.toString ++ " times")->React.string}
    </RMWC.Button>
    <RMWC.Card outlined={true} style={ReactDOM.Style.make(~width="21rem", ())}>
      <RMWC.Typography use="headline6"> {"Test"->React.string} </RMWC.Typography>
    </RMWC.Card>
  </div>
}
