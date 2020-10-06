import React, { Fragment, useState, useEffect } from "react";
import "./App.css";
import Feed from "./components/Feed";
import axios from "axios";

function App() {
  const [feed, setFeed] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    console.log("fetchFeed");
    fetchFeed();
  }, []);

  const fetchFeed = async () => {
    console.log("fetchFeed");
    let feed = {};
    try {
      setLoading(true);
      const res = await axios.get("http://localhost:4000/", {
        headers: {
          "Content-Type": "application/json",
        },
      });

      feed = res.data;
      setFeed(feed);
      console.log(res.data);
    } catch (err) {
      console.log(err);
      console.log("problem with server");
    }
    setLoading(false);
  };

  return (
    <Fragment>
      {!loading ? (
        <div className="App">
          <header></header>
          <div className="body">
            <Feed
              title={feed.title}
              language={feed.language}
              pubDate={feed.published_date}
              generator={feed.generator}
              imageUrl={feed.image_url}
              items={feed.items}
            />
          </div>
        </div>
      ) : (
        <div className="d-flex justify-content-center mb-5">
          <p>Loading Feed...</p>
          <div className="loader center">
            <i className="fa fa-cog fa-spin" />
          </div>
        </div>
      )}
    </Fragment>
  );
}

export default App;
