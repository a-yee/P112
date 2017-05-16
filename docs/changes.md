2.1(a)

put 15 full bands ... in parenthetical commas


The relationship between frequency and spatial variables in an image are closely tied to the fourier representations of the spatial function $f(x,y)$. To demonstrate a simplified example of this relationship, consider fixing $y = k$ where $k = constant$. 

\begin{figure}[H]
    \centering
    \begin{subfigure}{.5\textwidth}
        \centering
        \includegraphics[width=3.1in]{pics/edge.jpg}
        \captionof{figure}{Example of an edge in an image}
        \label{fig:edge}
    \end{subfigure}%
    \begin{subfigure}{.5\textwidth}
        \centering
        \includegraphics[width=3.1in]{pics/edge_wave.jpg}
        \captionof{figure}{Edge spatial waveform of intensity values}
        \label{fig:edge_wave}
    \end{subfigure}
    \caption{Example of an edge in an image}
    \label{fig:edge_wave_1}
\end{figure}

Notice that the rate of change of the intensity curve in figure \ref{edge_wave_1} is asymptotic near the edge occurance. In lecture we discusses how waveforms like this would require an infinite number of terms in the equivalent Fourier Series representation of the signal. Consider the less severe case: an edge with $\dfrac{df(k,y)}{dy} = large$.


