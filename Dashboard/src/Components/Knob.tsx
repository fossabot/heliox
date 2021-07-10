import React, { useRef } from "react";
import styled from "styled-components";

const KnobSVG = styled.svg`
  .cls-1 {
    fill: #545353;
  }

  .cls-2 {
    font-size: 20px;
    fill: #fff;
    font-family: SegoeUI-Bold, Segoe UI;
    font-weight: 700;
  }

  .cls-3 {
    fill: #2f6087;
  }
  #Status {
    user-select: none;
  }
`;

const Knob = () => {
  const overlayRef = useRef<SVGGElement>(null);
  let i = 20;

  return (
    <div>
      <KnobSVG
        xmlns="http://www.w3.org/2000/svg"
        viewBox="0 0 141.73 141.73"
        height="180px"
        onClick={() => {
          if (overlayRef.current !== null) {
            overlayRef.current.style.transformOrigin = "50% 50%";
            overlayRef.current.style.transform = `rotate(${i}deg)`;
            i += 20;
          }
        }}
        onContextMenu={() => {
          alert("off"); // absolute on/off
        }}
      >
        <g id="Base">
          <path
            className="cls-1"
            d="M352.12,273A70.87,70.87,0,1,0,423,343.84,70.86,70.86,0,0,0,352.12,273Zm0,120.48a49.61,49.61,0,1,1,49.61-49.61A49.61,49.61,0,0,1,352.12,393.45Z"
            transform="translate(-281.26 -272.97)"
          />
        </g>
        <g id="Status">
          <text className="cls-2" transform="translate(53.61 77.41)">
            255
          </text>
        </g>
        <g id="Overlay" ref={overlayRef}>
          <g>
            <path
              className="cls-3"
              d="M363.54,295.57"
              transform="translate(-281.26 -272.97)"
            />
            <path
              className="cls-3"
              d="M363.54,295.57a49.44,49.44,0,0,0-11.42-1.34"
              transform="translate(-281.26 -272.97)"
            />
            <path
              className="cls-3"
              d="M352.12,294.23"
              transform="translate(-281.26 -272.97)"
            />
            <path
              className="cls-3"
              d="M368.76,275l-.33-.1v0Z"
              transform="translate(-281.26 -272.97)"
            />
            <polygon
              className="cls-3"
              points="87.18 1.89 87.18 1.89 87.17 1.91 87.17 1.91 87.18 1.89"
            />
            <polygon
              className="cls-3"
              points="82.28 22.58 87.17 1.91 87.17 1.91 82.28 22.58 82.28 22.58"
            />
            <path
              className="cls-3"
              d="M368.76,275l-.33-.08A71.24,71.24,0,0,0,352.12,273a10.71,10.71,0,0,0-10.53,10.73,10.53,10.53,0,0,0,10.53,10.53,49.44,49.44,0,0,1,11.42,1.34v0a10.33,10.33,0,0,0,12.56-7.68A10.79,10.79,0,0,0,368.76,275Z"
              transform="translate(-281.26 -272.97)"
            />
          </g>
        </g>
      </KnobSVG>
    </div>
  );
};

export default Knob;
