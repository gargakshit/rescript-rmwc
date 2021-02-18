module RMWC = {
  module Portal = {
    @module("@rmwc/base") @react.component
    external make: unit => React.element = "Portal"
  }

  module Button = {
    @module("@rmwc/button") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~danger: option<bool>=?,
      ~dense: option<bool>=?,
      ~disabled: option<bool>=?,
      ~icon: option<React.element>=?,
      ~label: option<string>=?,
      ~onClick: option<unit => unit>=?,
      ~outlined: option<bool>=?,
      ~raised: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
      ~trailingIcon: option<React.element>=?,
      ~unelevated: option<bool>=?,
    ) => React.element = "Button"
  }

  module Card = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~outlined: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "Card"
  }

  module CardPrimaryAction = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "CardPrimaryAction"
  }

  module CardMedia = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~sixteenByNine: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
      ~square: option<bool>=?,
    ) => React.element = "CardMedia"
  }

  module CardMediaContent = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "CardMediaContent"
  }

  module CardActions = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~fullBleed: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "CardActions"
  }

  module CardActionButtons = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "CardActionButtons"
  }

  module CardActionIcons = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "CardActionIcons"
  }

  module CardActionIcon = {
    @module("@rmwc/card") @react.component
    external make: (
      ~checked: option<bool>=?,
      ~children: option<React.element>=?,
      ~disabled: option<bool>=?,
      ~icon: option<React.element>=?,
      ~label: option<string>=?,
      ~onClick: option<unit => unit>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "CardActionIcon"
  }

  module CardActionButton = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~danger: option<bool>=?,
      ~dense: option<bool>=?,
      ~disabled: option<bool>=?,
      ~icon: option<React.element>=?,
      ~label: option<string>=?,
      ~onClick: option<unit => unit>=?,
      ~outlined: option<bool>=?,
      ~raised: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
      ~trailingIcon: option<React.element>=?,
      ~unelevated: option<bool>=?,
    ) => React.element = "CardActionButton"
  }

  module Typography = {
    @module("@rmwc/typography") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~use: string,
      ~style: option<ReactDOM.style>=?,
      ~tag: option<string>=?,
      ~theme: option<string>=?,
    ) => React.element = "Typography"
  }

  // module Dialog = {
  //   @module("@rmwc/dialog") external onCloseEvent: 'whatever = "DialogOnCloseEventT"

  //   @module("@rmwc/dialog") @react.component
  //   external make: (
  //     ~onClose: option<onCloseEvent => unit>=?,
  //     ~onClosed: option<onCloseEvent => unit>=?,
  //     ~\"open": option<bool>=?,
  //   ) => React.element = "Dialog"
  // }

  module Avatar = {
    @module("@rmwc/avatar") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~contain: option<bool>=?,
      ~interactive: option<bool>=?,
      ~name: option<string>=?,
      ~size: option<string>=?,
      ~style: option<ReactDOM.style>=?,
      ~square: option<bool>=?,
      ~src: option<string>=?,
    ) => React.element = "Avatar"
  }

  module AvatarGroup = {
    @module("@rmwc/avatar") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~dense: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "AvatarGroup"
  }

  module AvatarCount = {
    @module("@rmwc/avatar") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~interactive: option<bool>=?,
      ~overflow: option<bool>=?,
      ~size: option<string>=?,
      ~style: option<ReactDOM.style>=?,
      ~square: option<bool>=?,
      ~value: int,
    ) => React.element = "AvatarCount"
  }

  module Icon = {
    @module("@rmwc/icon") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~icon: string,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "Icon"
  }

  module LinearProgress = {
    @module("@rmwc/linear-progress") @react.component
    external make: (
      ~buffer: option<float>=?,
      ~closed: option<bool>=?,
      ~progress: option<float>=?,
      ~reversed: option<bool>=?,
    ) => React.element = "LinearProgress"
  }

  module CircularProgress = {
    @module("@rmwc/circular-progress") @react.component
    external make: (
      ~min: option<float>=?,
      ~max: option<float>=?,
      ~progress: option<float>=?,
      ~size: option<string>=?,
    ) => React.element = "CircularProgress"
  }

  module Tooltip = {
    @module("@rmwc/tooltip") @react.component
    external make: (
      ~activateOn: option<array<string>>=?,
      ~align: option<string>=?,
      ~children: React.element,
      ~className: option<string>=?,
      ~content: React.element,
      ~enterDelay: option<float>=?,
      ~leaveDelay: option<float>=?,
      ~\"open": option<bool>=?,
      ~showArrow: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
    ) => React.element = "Tooltip"
  }

  module TextField = {
    @module("@rmwc/textfield") @react.component
    external make: (
      ~align: option<string>=?,
      ~characterCount: option<bool>=?,
      ~className: option<string>=?,
      ~disabled: option<bool>=?,
      ~floatLabel: option<bool>=?,
      ~fullWidth: option<bool>=?,
      ~helpText: option<React.element>=?,
      ~icon: option<React.element>=?,
      ~invalid: option<bool>=?,
      ~label: option<React.element>=?,
      ~onChange: option<Types.textFieldChangeEvent => unit>=?,
      ~outlined: option<bool>=?,
      ~required: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
      ~textArea: option<bool>=?,
      ~trailingIcon: option<React.element>=?,
      ~\"type": option<string>=?,
      ~value: option<string>=?,
    ) => React.element = "TextField"
  }
}
