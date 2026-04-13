.class public Lib/player/models/ServerModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private time_now:Ljava/lang/String;

.field private timestamp_now:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lib/player/models/ServerModel;->timestamp_now:J

    return-void
.end method


# virtual methods
.method public getTime_now()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/ServerModel;->time_now:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp_now()J
    .locals 2

    iget-wide v0, p0, Lib/player/models/ServerModel;->timestamp_now:J

    return-wide v0
.end method

.method public setTime_now(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/ServerModel;->time_now:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp_now(J)V
    .locals 0

    iput-wide p1, p0, Lib/player/models/ServerModel;->timestamp_now:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerModel{timestamp_now=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lib/player/models/ServerModel;->timestamp_now:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\', time_now=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/ServerModel;->time_now:Ljava/lang/String;

    const-string v2, "\'}"

    invoke-static {v0, v1, v2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
