import React, { Fragment } from "react";
import Item from "./Item";

const Feed = ({ title, language, pubDate, generator, imageUrl, items }) => {
  return (
    <div>
      <p>{title}</p>
      <p>{language}</p>
      <p>{pubDate}</p>
      <p>{generator}</p>
      <div className="row">
        {items !== undefined ? (
          items.map((item, i) => {
            return (
              <Item
                key={i}
                title={item.title}
                description={item.description}
                publishedDate={item.published_date}
                url={item.link_to_audio}
                episode={item.episode}
                duration={item.duration}
              />
            );
          })
        ) : (
          <p>No items found...</p>
        )}
      </div>
    </div>
  );
};

export default Feed;
