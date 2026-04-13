.class public Lib/player/models/SubtitleModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/player/models/SubtitleModel$UploaderModel;,
        Lib/player/models/SubtitleModel$FeatureDetailModel;,
        Lib/player/models/SubtitleModel$RelatedLinkModel;,
        Lib/player/models/SubtitleModel$FileModel;,
        Lib/player/models/SubtitleModel$AttributesModel;,
        Lib/player/models/SubtitleModel$DataModel;
    }
.end annotation


# instance fields
.field dataModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lib/player/models/SubtitleModel$DataModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm4/b;
        value = "data"
    .end annotation
.end field

.field page:I
    .annotation runtime Lm4/b;
        value = "page"
    .end annotation
.end field

.field per_page:I
    .annotation runtime Lm4/b;
        value = "per_page"
    .end annotation
.end field

.field total_count:I
    .annotation runtime Lm4/b;
        value = "total_count"
    .end annotation
.end field

.field total_pages:I
    .annotation runtime Lm4/b;
        value = "total_pages"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lib/player/models/SubtitleModel$DataModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lib/player/models/SubtitleModel;->dataModels:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method
