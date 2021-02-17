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
      ~label: option<string>=?,
      ~onClick: option<unit => unit>=?,
      ~outlined: option<bool>=?,
      ~raised: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
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

  // module CardActionIcon = {
  //   @module("@rmwc/card") @react.component
  //   external make: (
  //     ~checked: option<bool>=?,
  //     ~children: option<React.element>=?,
  //     ~disabled: option<bool>=?,
  //     ~style: option<ReactDOM.style>=?,
  //   ) => React.element = "CardActionIcon"
  // }

  module CardActionButton = {
    @module("@rmwc/card") @react.component
    external make: (
      ~children: option<React.element>=?,
      ~danger: option<bool>=?,
      ~dense: option<bool>=?,
      ~disabled: option<bool>=?,
      ~label: option<string>=?,
      ~onClick: option<unit => unit>=?,
      ~outlined: option<bool>=?,
      ~raised: option<bool>=?,
      ~style: option<ReactDOM.style>=?,
      ~unelevated: option<bool>=?,
    ) => React.element = "CardActionButton"
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
}