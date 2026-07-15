# Feasible Growth Hypotheses

The following hypotheses guide the diagnostic analysis. Each hypothesis is designed to test whether observable trip-level behaviour can reveal casual rider segments with stronger potential for annual membership conversion.

> **Important Constraint**
>
> Because the available dataset is **trip-level** and does **not contain customer identifiers**, the analysis focuses on behavioural patterns at the **ride, time, station, and segment level** rather than individual rider conversion. :contentReference[oaicite:0]{index=0}

---

| Hypothesis | Analytical Test | Business Value |
|------------|-----------------|----------------|
| **H1: Utility Commuter Hypothesis** | Compare casual and member rides by weekday, time of day, and peak commuting windows (07:00–09:00 and 16:00–18:00). Analyse whether casual riders exhibit similar behavioural patterns to members during typical commuting periods. | If a meaningful proportion of casual rides occurs during member-like commute windows, these riders may represent stronger candidates for annual membership messaging focused on convenience, routine, and cost efficiency. |
| **H2: Leisure Rider Differentiation Hypothesis** | Compare casual and member rides across weekends, trip duration, bike type, and start/end station patterns. Determine whether casual riders are disproportionately associated with longer rides, weekend usage, and leisure-oriented station clusters. | Distinguishes recreational or tourist riders from casual riders whose behaviour more closely resembles members, reducing the risk of targeting low-intent riders with membership campaigns. |
| **H3: Geographic Affinity Hypothesis** | Analyse start and end station patterns to identify stations or routes with high member activity. Compare whether casual rides also occur around these member-dense locations and routes. | Casual riders using stations with strong member activity may represent better conversion opportunities, particularly where travel patterns suggest routine transportation rather than one-off leisure trips. |
| **H4: Ride Duration Similarity Hypothesis** | Compare ride duration distributions between casual riders and annual members. Identify whether a subset of casual rides falls within the shorter, more routine duration range commonly associated with member behaviour. | Casual riders whose trip durations resemble member behaviour may be more receptive to annual membership positioning than riders primarily taking unusually long or recreational trips. |
| **H5: Economic Threshold Hypothesis** *(Future Data Requirement)* | Cannot be fully evaluated using the current dataset because customer IDs, pricing records, and membership purchase histories are unavailable. Future analysis would require customer-level trip frequency, casual ride expenditure, membership price, and conversion data. | Future customer-level analysis could identify **"power casuals"** whose accumulated casual riding costs exceed the value of an annual membership, enabling highly targeted and personalised conversion campaigns. |

# Stakeholder Decision Matrix

The stakeholder decision matrix connects each stakeholder’s business concern to the analytical evidence required from the project. This ensures that the analysis remains decision-focused rather than purely descriptive. :contentReference[oaicite:0]{index=0}

| Stakeholder | Key Decision Area | Analytical Requirement | Expected Output |
|-------------|-------------------|------------------------|-----------------|
| **Lily Moreno — Director of Marketing** | Decide which casual rider segments should be prioritised for annual membership campaigns. | Evidence showing how casual riders differ from annual members by ride frequency, ride duration, time of day, day of week, bike type, and station usage. | A clear high-intent casual rider profile with recommended campaign messaging and targeting logic. |
| **Cyclistic Executive Team** | Decide whether the proposed conversion strategy is credible, focused, and worth further investment. | Executive-level evidence showing the size, behaviour, and strategic relevance of the target casual rider segment, alongside key risks and limitations. | A concise business case explaining why targeted conversion is more efficient than broad casual rider marketing. |
| **Marketing Team** | Translate analytical findings into practical campaign design. | Segment-level insights that can inform campaign timing, messaging, and channel selection, such as weekday commuter patterns, weekend leisure patterns, and station-based targeting opportunities. | Actionable segment definitions and recommended marketing interventions for each priority rider group. |
| **Operations / Fleet Planning** | Assess whether targeted conversion efforts may create pressure on bike availability or station capacity. | Station-level and time-based usage patterns showing where demand may increase if targeted campaigns are successful. | Operational guardrails identifying high-demand locations or time windows that may need monitoring during campaign rollout. |
| **Finance / Commercial Team** | Assess future financial feasibility once revenue, pricing, and campaign cost data become available. | Trip-level evidence of segment size and usage intensity, with clear acknowledgement that CAC, LTV, ROI, and margin cannot be directly calculated from the current dataset. | A future-data requirement list for measuring campaign ROI, cost per conversion, LTV, and financial impact. |