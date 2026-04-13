.class public Lib/player/models/SubtitleModel$RelatedLinkModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/player/models/SubtitleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelatedLinkModel"
.end annotation


# instance fields
.field img_url:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "img_url"
    .end annotation
.end field

.field label:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "label"
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
.method public getImg_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$RelatedLinkModel;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$RelatedLinkModel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/SubtitleModel$RelatedLinkModel;->url:Ljava/lang/String;

    return-object v0
.end method
