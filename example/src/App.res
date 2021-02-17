open RescriptRmwc.RMWC

@react.component
let make = () => {
  <div
    style={ReactDOM.Style.make(
      ~display="flex",
      ~alignItems="center",
      ~justifyContent="center",
      ~height="100vh",
      (),
    )}>
    <RMWC.Card style={ReactDOM.Style.make(~width="21rem", ())}>
      <RMWC.CardPrimaryAction>
        <RMWC.CardMedia
          sixteenByNine={true}
          style={ReactDOM.Style.make(
            ~backgroundImage="url(https://source.unsplash.com/random/1920x1080)",
            (),
          )}
        />
        <div style={ReactDOM.Style.make(~padding="0 1rem 1rem 1rem", ())}>
          <RMWC.Typography use="headline6" tag="h2">
            {"Lorem Ipsum"->React.string}
          </RMWC.Typography>
          <RMWC.Typography
            use="subtitle2"
            tag="h3"
            theme="textSecondaryOnBackground"
            style={ReactDOM.Style.make(~marginTop="-1rem", ())}>
            {"By John Doe"->React.string}
          </RMWC.Typography>
          <RMWC.Typography use="body1" tag="div" theme="textSecondaryOnBackground">
            {"Visit ten places on our planet that are undergoing the biggest changes today."->React.string}
          </RMWC.Typography>
        </div>
      </RMWC.CardPrimaryAction>
      <RMWC.CardActions>
        <RMWC.CardActionButtons>
          <RMWC.CardActionButton> {"Read"->React.string} </RMWC.CardActionButton>
          <RMWC.CardActionButton> {"Bookmark"->React.string} </RMWC.CardActionButton>
        </RMWC.CardActionButtons>
      </RMWC.CardActions>
    </RMWC.Card>
  </div>
}
