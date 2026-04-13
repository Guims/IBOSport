.class public Lib/player/models/SubtitleLinkModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field file_name:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "file_name"
    .end annotation
.end field

.field link:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "link"
    .end annotation
.end field

.field message:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "message"
    .end annotation
.end field

.field remaining:I
    .annotation runtime Lm4/b;
        value = "remaining"
    .end annotation
.end field

.field requests:I
    .annotation runtime Lm4/b;
        value = "requests"
    .end annotation
.end field

.field reset_time:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "reset_time"
    .end annotation
.end field

.field reset_time_utc:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "reset_time_utc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleLinkModel;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleLinkModel;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleLinkModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRemaining()I
    .locals 1

    iget v0, p0, Lib/player/models/SubtitleLinkModel;->remaining:I

    return v0
.end method

.method public getRequests()I
    .locals 1

    iget v0, p0, Lib/player/models/SubtitleLinkModel;->requests:I

    return v0
.end method

.method public getReset_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleLinkModel;->reset_time:Ljava/lang/String;

    return-object v0
.end method

.method public getReset_time_utc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleLinkModel;->reset_time_utc:Ljava/lang/String;

    return-object v0
.end method
