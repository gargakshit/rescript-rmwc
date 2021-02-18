open RescriptRmwc.RMWC

@react.component
let make = () => {
  let imageUrl = "https://images.unsplash.com/photo-1611332744415-7c20ecb34c11?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixlib=rb-1.2.1&q=80&w=1920"

  let avatar1Url = "https://images.unsplash.com/photo-1613521527519-4a3b26610e8f?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"
  let avatar2Url = "https://images.unsplash.com/photo-1613553242301-529fe5529bf7?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"
  let avatar3Url = "https://images.unsplash.com/photo-1613508603136-79e2c4a80ffe?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=256&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=256"

  let (liked, setLiked) = React.useState(_ => false)
  let (dialogOpen, setDialogOpen) = React.useState(_ => false)
  let (name, setName) = React.useState(_ => "")

  <>
    <RMWC.Portal />
    <RMWC.Dialog
      \"open"={dialogOpen}
      renderToPortal={true}
      onClose={_ => {
        setName(_ => "")
        setDialogOpen(_ => false)
      }}>
      <RMWC.DialogTitle> {"Hello"->React.string} </RMWC.DialogTitle>
      <RMWC.DialogContent> {("Nice to meet you, " ++ name)->React.string} </RMWC.DialogContent>
      <RMWC.DialogActions>
        <RMWC.DialogButton action="close"> {"OK"->React.string} </RMWC.DialogButton>
      </RMWC.DialogActions>
    </RMWC.Dialog>
    <div
      style={ReactDOM.Style.make(
        ~display="flex",
        ~alignItems="center",
        ~justifyContent="center",
        ~height="100vh",
        (),
      )}>
      <RMWC.Card style={ReactDOM.Style.make(~width="21rem", ())} outlined={true}>
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
            <RMWC.CardActionIcon
              onClick={() => setLiked(v => !v)}
              icon={<RMWC.Tooltip content={(liked ? "Unlike" : "Like")->React.string}>
                <RMWC.Icon icon={liked ? "favorite" : "favorite_border"} />
              </RMWC.Tooltip>}
            />
            <RMWC.CardActionIcon
              icon={<RMWC.Tooltip content={"Share"->React.string}>
                <RMWC.Icon icon="share" />
              </RMWC.Tooltip>}
            />
            <RMWC.CardActionIcon
              icon={<RMWC.Tooltip content={"More Actions"->React.string}>
                <RMWC.Icon icon="more_vert" />
              </RMWC.Tooltip>}
            />
          </RMWC.CardActionIcons>
        </RMWC.CardActions>
      </RMWC.Card>
      <RMWC.Card
        style={ReactDOM.Style.make(~marginLeft="2rem", ~width="21rem", ())} outlined={true}>
        <div style={ReactDOM.Style.make(~padding="0rem 1rem", ())}>
          <RMWC.Typography tag="h3" use="heading3">
            {"Progress Indicators"->React.string}
          </RMWC.Typography>
          <RMWC.Typography tag="span" use="caption">
            {"Intermediate"->React.string}
          </RMWC.Typography>
          <RMWC.LinearProgress />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <RMWC.Typography tag="span" use="caption"> {"Default"->React.string} </RMWC.Typography>
          <RMWC.LinearProgress progress={0.6} />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <RMWC.Typography tag="span" use="caption"> {"Buffered"->React.string} </RMWC.Typography>
          <RMWC.LinearProgress progress={0.4} buffer={0.5} />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <RMWC.Typography tag="span" use="caption"> {"Reversed"->React.string} </RMWC.Typography>
          <RMWC.LinearProgress progress={0.2} reversed={true} />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <RMWC.Typography tag="span" use="caption">
            {"Circular Progress"->React.string}
          </RMWC.Typography>
          <div
            style={ReactDOM.Style.make(
              ~display="flex",
              ~width="100%",
              ~alignItems="center",
              ~justifyContent="space-between",
              (),
            )}>
            <RMWC.CircularProgress />
            <RMWC.CircularProgress progress={0.6} />
            <RMWC.Button disabled={true} outlined={true} icon={<RMWC.CircularProgress />}>
              {"Loading Button"->React.string}
            </RMWC.Button>
          </div>
          <div style={ReactDOM.Style.make(~marginTop="16px", ())} />
        </div>
      </RMWC.Card>
      <RMWC.Card style={ReactDOM.Style.make(~marginLeft="2rem", ())} outlined={true}>
        <div
          style={ReactDOM.Style.make(
            ~padding="1rem",
            ~display="flex",
            ~flexDirection="column",
            (),
          )}>
          <RMWC.TextField
            outlined={true}
            label={"Enter your name"->React.string}
            value={name}
            onChange={e => setName(ReactEvent.Form.currentTarget(e)["value"])}
          />
          <div style={ReactDOM.Style.make(~marginTop="16px", ())} />
          <RMWC.Button
            raised={true}
            icon={<RMWC.Icon icon="chat" />}
            onClick={() => {
              setDialogOpen(_ => true)
            }}>
            {"Greet"->React.string}
          </RMWC.Button>
        </div>
      </RMWC.Card>
      <RMWC.Card style={ReactDOM.Style.make(~marginLeft="2rem", ())} outlined={true}>
        <div style={ReactDOM.Style.make(~padding="0.5rem 1rem", ())}>
          <RMWC.AvatarGroup dense={true}>
            <RMWC.Tooltip content={"Jane Doe"->React.string}>
              <RMWC.Avatar src={avatar1Url} size="large" interactive={true} />
            </RMWC.Tooltip>
            <RMWC.Tooltip content={"John Doe"->React.string}>
              <RMWC.Avatar src={avatar2Url} size="large" interactive={true} />
            </RMWC.Tooltip>
            <RMWC.Tooltip content={"Bob"->React.string}>
              <RMWC.Avatar src={avatar3Url} size="large" interactive={true} />
            </RMWC.Tooltip>
            <RMWC.Tooltip content={"4 more"->React.string}>
              <RMWC.AvatarCount size="large" value={4} overflow={true} interactive={true} />
            </RMWC.Tooltip>
          </RMWC.AvatarGroup>
        </div>
      </RMWC.Card>
    </div>
  </>
}
