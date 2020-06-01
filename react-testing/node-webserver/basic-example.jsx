// rendering HTML tags
var myDivElement = <div className = "foo" />;
ReactDOM.render(myDivElement, document.getElementById('example'));

// rendering Components
var MyComponent = React.createClass({ ... });

var myElement = <MyComponent someProperty={true} />;

ReactDOM.render(myElement, document.getElementById('example'));