.class public Lib/player/models/SubtitleModel$AttributesModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/player/models/SubtitleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributesModel"
.end annotation


# instance fields
.field ai_translated:Z
    .annotation runtime Lm4/b;
        value = "ai_translated"
    .end annotation
.end field

.field comments:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "comments"
    .end annotation
.end field

.field download_count:I
    .annotation runtime Lm4/b;
        value = "download_count"
    .end annotation
.end field

.field featureDetailModel:Lib/player/models/SubtitleModel$FeatureDetailModel;
    .annotation runtime Lm4/b;
        value = "feature_details"
    .end annotation
.end field

.field fileModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lib/player/models/SubtitleModel$FileModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm4/b;
        value = "files"
    .end annotation
.end field

.field foreign_parts_only:Z
    .annotation runtime Lm4/b;
        value = "foreign_parts_only"
    .end annotation
.end field

.field fps:F
    .annotation runtime Lm4/b;
        value = "fps"
    .end annotation
.end field

.field from_trusted:Z
    .annotation runtime Lm4/b;
        value = "from_trusted"
    .end annotation
.end field

.field hd:Z
    .annotation runtime Lm4/b;
        value = "hd"
    .end annotation
.end field

.field hearing_impaired:Z
    .annotation runtime Lm4/b;
        value = "hearing_impaired"
    .end annotation
.end field

.field language:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "language"
    .end annotation
.end field

.field legacy_subtitle_id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "legacy_subtitle_id"
    .end annotation
.end field

.field machine_translated:Z
    .annotation runtime Lm4/b;
        value = "machine_translated"
    .end annotation
.end field

.field new_download_count:I
    .annotation runtime Lm4/b;
        value = "new_download_count"
    .end annotation
.end field

.field ratings:F
    .annotation runtime Lm4/b;
        value = "ratings"
    .end annotation
.end field

.field relatedLinkModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lib/player/models/SubtitleModel$RelatedLinkModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm4/b;
        value = "related_links"
    .end annotation
.end field

.field release:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "release"
    .end annotation
.end field

.field subtitle_id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "subtitle_id"
    .end annotation
.end field

.field upload_date:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "upload_date"
    .end annotation
.end field

.field uploaderModel:Lib/player/models/SubtitleModel$UploaderModel;
    .annotation runtime Lm4/b;
        value = "uploader"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lib/player/models/SubtitleModel$FileModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lib/player/models/SubtitleModel$AttributesModel;->fileModels:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$AttributesModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$AttributesModel;->subtitle_id:Ljava/lang/String;

    return-object v0
.end method
