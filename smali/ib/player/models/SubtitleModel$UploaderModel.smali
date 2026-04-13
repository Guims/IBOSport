.class public Lib/player/models/SubtitleModel$UploaderModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/player/models/SubtitleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploaderModel"
.end annotation


# instance fields
.field name:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "name"
    .end annotation
.end field

.field rank:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "rank"
    .end annotation
.end field

.field uploader_id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "uploader_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$UploaderModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$UploaderModel;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getUploader_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$UploaderModel;->uploader_id:Ljava/lang/String;

    return-object v0
.end method
