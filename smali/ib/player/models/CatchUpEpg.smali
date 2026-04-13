.class public Lib/player/models/CatchUpEpg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channel_id:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private epg_id:J

.field private has_archive:I

.field private id:J

.field private lang:Ljava/lang/String;

.field private now_playing:I

.field private start:Ljava/lang/String;

.field private start_timestamp:J

.field private stop_timestamp:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/CatchUpEpg;->channel_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/CatchUpEpg;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 5

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getEnd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv4/c;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/CatchUpEpg;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getEpg_id()J
    .locals 2

    iget-wide v0, p0, Lib/player/models/CatchUpEpg;->epg_id:J

    return-wide v0
.end method

.method public getHas_archive()I
    .locals 1

    iget v0, p0, Lib/player/models/CatchUpEpg;->has_archive:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lib/player/models/CatchUpEpg;->id:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/CatchUpEpg;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getNow_playing()I
    .locals 1

    iget v0, p0, Lib/player/models/CatchUpEpg;->now_playing:I

    return v0
.end method

.method public getProgress()I
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStop_timestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getReadableDuration()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStop_timestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/CatchUpEpg;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getStartForUrl()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lv4/c;->a:[LB3/c;

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "yyyy-MM-dd:HH-mm"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getStart_timestamp()J
    .locals 2

    iget-wide v0, p0, Lib/player/models/CatchUpEpg;->start_timestamp:J

    return-wide v0
.end method

.method public getStop_timestamp()J
    .locals 2

    iget-wide v0, p0, Lib/player/models/CatchUpEpg;->stop_timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/CatchUpEpg;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/timeshift/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getDuration()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lib/player/models/CatchUpEpg;->getStartForUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ts"

    invoke-static {v0, p4, p1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setChannel_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CatchUpEpg;->channel_id:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CatchUpEpg;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CatchUpEpg;->end:Ljava/lang/String;

    return-void
.end method

.method public setEpg_id(J)V
    .locals 0

    iput-wide p1, p0, Lib/player/models/CatchUpEpg;->epg_id:J

    return-void
.end method

.method public setHas_archive(I)V
    .locals 0

    iput p1, p0, Lib/player/models/CatchUpEpg;->has_archive:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lib/player/models/CatchUpEpg;->id:J

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CatchUpEpg;->lang:Ljava/lang/String;

    return-void
.end method

.method public setNow_playing(I)V
    .locals 0

    iput p1, p0, Lib/player/models/CatchUpEpg;->now_playing:I

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CatchUpEpg;->start:Ljava/lang/String;

    return-void
.end method

.method public setStart_timestamp(J)V
    .locals 0

    iput-wide p1, p0, Lib/player/models/CatchUpEpg;->start_timestamp:J

    return-void
.end method

.method public setStop_timestamp(J)V
    .locals 0

    iput-wide p1, p0, Lib/player/models/CatchUpEpg;->stop_timestamp:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CatchUpEpg;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Epg{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lib/player/models/CatchUpEpg;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", epg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lib/player/models/CatchUpEpg;->epg_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CatchUpEpg;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CatchUpEpg;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', start=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CatchUpEpg;->start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', end=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CatchUpEpg;->end:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CatchUpEpg;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', channel_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CatchUpEpg;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', start_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lib/player/models/CatchUpEpg;->start_timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stop_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lib/player/models/CatchUpEpg;->stop_timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", now_playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lib/player/models/CatchUpEpg;->now_playing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has_archive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lib/player/models/CatchUpEpg;->has_archive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
