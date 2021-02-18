open RescriptRmwc.RMWC

@react.component
let make = () => {
  let imageUrl = "https://images.unsplash.com/photo-1611332744415-7c20ecb34c11?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixlib=rb-1.2.1&q=80&w=1920"

  let avatar1Url = "https://images.unsplash.com/photo-1613521527519-4a3b26610e8f?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"
  let avatar2Url = "https://images.unsplash.com/photo-1613553242301-529fe5529bf7?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"
  let avatar3Url = "https://images.unsplash.com/photo-1613508603136-79e2c4a80ffe?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"

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
          style={ReactDOM.Style.make(~backgroundImage="url(" ++ imageUrl ++ ")", ())}
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
        <RMWC.CardActionIcons>
          <RMWC.CardActionIcon icon={<RMWC.Icon icon="favorite_border" />} />
          <RMWC.CardActionIcon icon={<RMWC.Icon icon="share" />} />
          <RMWC.CardActionIcon icon={<RMWC.Icon icon="more_vert" />} />
        </RMWC.CardActionIcons>
      </RMWC.CardActions>
    </RMWC.Card>
    <RMWC.Card style={ReactDOM.Style.make(~marginLeft="2rem", ())} outlined={true}>
      <RMWC.CardPrimaryAction>
        <div style={ReactDOM.Style.make(~padding="0.5rem 1rem", ())}>
          <RMWC.AvatarGroup dense={true}>
            <RMWC.Avatar src={avatar1Url} size="large" name="Jane Doe" interactive={true} />
            <RMWC.Avatar src={avatar2Url} size="large" name="John Doe" interactive={true} />
            <RMWC.Avatar src={avatar3Url} size="large" name="Bob" interactive={true} />
            <RMWC.AvatarCount size="large" value={4} overflow={true} interactive={true} />
          </RMWC.AvatarGroup>
        </div>
      </RMWC.CardPrimaryAction>
    </RMWC.Card>
  </div>
}
