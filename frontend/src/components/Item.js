import React, { Fragment } from "react";

const Item = ({
  title,
  description,
  pubDate,
  linkToAudio,
  episode,
  duration,
}) => {
  return (
    <div>
      <p>{title}</p>
    </div>
  );
};

export default Item;
