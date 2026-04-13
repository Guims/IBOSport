.class public Lib/player/models/ResumeModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field last_position:J

.field name:Ljava/lang/String;

.field pro:I

.field stream_id:Ljava/lang/String;

.field tmdb_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lib/player/models/ResumeModel;->tmdb_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLast_position()J
    .locals 2

    iget-wide v0, p0, Lib/player/models/ResumeModel;->last_position:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/ResumeModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPro()I
    .locals 1

    iget v0, p0, Lib/player/models/ResumeModel;->pro:I

    return v0
.end method

.method public getStream_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/ResumeModel;->stream_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/ResumeModel;->tmdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public setLast_position(J)V
    .locals 0

    iput-wide p1, p0, Lib/player/models/ResumeModel;->last_position:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/ResumeModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setPro(I)V
    .locals 0

    iput p1, p0, Lib/player/models/ResumeModel;->pro:I

    return-void
.end method

.method public setStream_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/ResumeModel;->stream_id:Ljava/lang/String;

    return-void
.end method

.method public setTmdb_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/ResumeModel;->tmdb_id:Ljava/lang/String;

    return-void
.end method
