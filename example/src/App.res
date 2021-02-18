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
    <Portal />
    <Dialog
      \"open"={dialogOpen}
      renderToPortal={true}
      onClose={_ => {
        setName(_ => "")
        setDialogOpen(_ => false)
      }}>
      <DialogTitle> {"Hello"->React.string} </DialogTitle>
      <DialogContent> {("Nice to meet you, " ++ name)->React.string} </DialogContent>
      <DialogActions>
        <DialogButton action="close"> {"OK"->React.string} </DialogButton>
      </DialogActions>
    </Dialog>
    <div
      style={ReactDOM.Style.make(
        ~display="flex",
        ~alignItems="center",
        ~justifyContent="center",
        ~height="100vh",
        (),
      )}>
      <Card style={ReactDOM.Style.make(~width="21rem", ())} outlined={true}>
        <CardPrimaryAction>
          <CardMedia
            sixteenByNine={true}
            style={ReactDOM.Style.make(~backgroundImage="url(" ++ imageUrl ++ ")", ())}
          />
          <div style={ReactDOM.Style.make(~padding="0 1rem 1rem 1rem", ())}>
            <Typography use="headline6" tag="h2"> {"Lorem Ipsum"->React.string} </Typography>
            <Typography
              use="subtitle2"
              tag="h3"
              theme="textSecondaryOnBackground"
              style={ReactDOM.Style.make(~marginTop="-1rem", ())}>
              {"By John Doe"->React.string}
            </Typography>
            <Typography use="body1" tag="div" theme="textSecondaryOnBackground">
              {"Visit ten places on our planet that are undergoing the biggest changes today."->React.string}
            </Typography>
          </div>
        </CardPrimaryAction>
        <CardActions>
          <CardActionButtons>
            <CardActionButton> {"Read"->React.string} </CardActionButton>
            <CardActionButton> {"Bookmark"->React.string} </CardActionButton>
          </CardActionButtons>
          <CardActionIcons>
            <CardActionIcon
              onClick={() => setLiked(v => !v)}
              icon={<Tooltip content={(liked ? "Unlike" : "Like")->React.string}>
                <Icon icon={liked ? "favorite" : "favorite_border"} />
              </Tooltip>}
            />
            <CardActionIcon
              icon={<Tooltip content={"Share"->React.string}> <Icon icon="share" /> </Tooltip>}
            />
            <CardActionIcon
              icon={<Tooltip content={"More Actions"->React.string}>
                <Icon icon="more_vert" />
              </Tooltip>}
            />
          </CardActionIcons>
        </CardActions>
      </Card>
      <Card style={ReactDOM.Style.make(~marginLeft="2rem", ~width="21rem", ())} outlined={true}>
        <div style={ReactDOM.Style.make(~padding="0rem 1rem", ())}>
          <Typography tag="h3" use="heading3"> {"Progress Indicators"->React.string} </Typography>
          <Typography tag="span" use="caption"> {"Intermediate"->React.string} </Typography>
          <LinearProgress />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <Typography tag="span" use="caption"> {"Default"->React.string} </Typography>
          <LinearProgress progress={0.6} />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <Typography tag="span" use="caption"> {"Buffered"->React.string} </Typography>
          <LinearProgress progress={0.4} buffer={0.5} />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <Typography tag="span" use="caption"> {"Reversed"->React.string} </Typography>
          <LinearProgress progress={0.2} reversed={true} />
          <div style={ReactDOM.Style.make(~marginTop="12px", ())} />
          <Typography tag="span" use="caption"> {"Circular Progress"->React.string} </Typography>
          <div
            style={ReactDOM.Style.make(
              ~display="flex",
              ~width="100%",
              ~alignItems="center",
              ~justifyContent="space-between",
              (),
            )}>
            <CircularProgress />
            <CircularProgress progress={0.6} />
            <Button disabled={true} outlined={true} icon={<CircularProgress />}>
              {"Loading Button"->React.string}
            </Button>
          </div>
          <div style={ReactDOM.Style.make(~marginTop="16px", ())} />
        </div>
      </Card>
      <Card style={ReactDOM.Style.make(~marginLeft="2rem", ())} outlined={true}>
        <div
          style={ReactDOM.Style.make(
            ~padding="1rem",
            ~display="flex",
            ~flexDirection="column",
            (),
          )}>
          <TextField
            outlined={true}
            label={"Enter your name"->React.string}
            value={name}
            onChange={e => setName(ReactEvent.Form.currentTarget(e)["value"])}
          />
          <div style={ReactDOM.Style.make(~marginTop="16px", ())} />
          <Button
            raised={true}
            icon={<Icon icon="chat" />}
            onClick={() => {
              setDialogOpen(_ => true)
            }}>
            {"Greet"->React.string}
          </Button>
        </div>
      </Card>
      <Card style={ReactDOM.Style.make(~marginLeft="2rem", ())} outlined={true}>
        <div style={ReactDOM.Style.make(~padding="0.5rem 1rem", ())}>
          <AvatarGroup dense={true}>
            <Tooltip content={"Jane Doe"->React.string}>
              <Avatar src={avatar1Url} size="large" interactive={true} />
            </Tooltip>
            <Tooltip content={"John Doe"->React.string}>
              <Avatar src={avatar2Url} size="large" interactive={true} />
            </Tooltip>
            <Tooltip content={"Bob"->React.string}>
              <Avatar src={avatar3Url} size="large" interactive={true} />
            </Tooltip>
            <Tooltip content={"4 more"->React.string}>
              <AvatarCount size="large" value={4} overflow={true} interactive={true} />
            </Tooltip>
          </AvatarGroup>
        </div>
      </Card>
    </div>
  </>
}
