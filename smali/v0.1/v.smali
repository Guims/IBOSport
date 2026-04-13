.class public final Lv0/v;
.super Landroidx/media3/exoplayer/source/e0;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:Landroidx/media3/common/DrmInitData;


# direct methods
.method public constructor <init>(LE0/b;Lu0/q;Lu0/m;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/e0;-><init>(LE0/b;Lu0/q;Lu0/m;)V

    iput-object p4, p0, Lv0/v;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 9

    iget-object v0, p0, Lv0/v;->b:Landroidx/media3/common/DrmInitData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lv0/v;->a:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/DrmInitData;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v1, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v2

    goto :goto_6

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/Metadata;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    const/4 v6, -0x1

    if-ge v5, v3, :cond_4

    invoke-virtual {v1, v5}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v7

    instance-of v8, v7, LW0/n;

    if-eqz v8, :cond_3

    check-cast v7, LW0/n;

    const-string v8, "com.apple.streaming.transportStreamTimestamp"

    iget-object v7, v7, LW0/n;->q:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_3
    if-ne v5, v6, :cond_5

    goto :goto_6

    :cond_5
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v3, -0x1

    new-array v2, v2, [Landroidx/media3/common/Metadata$Entry;

    :goto_4
    if-ge v4, v3, :cond_9

    if-eq v4, v5, :cond_8

    if-ge v4, v5, :cond_7

    move v6, v4

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v4, -0x1

    :goto_5
    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v7

    aput-object v7, v2, v6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_6
    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-ne v0, v2, :cond_a

    iget-object v2, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eq v1, v2, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    :cond_b
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/e0;->getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object p1

    return-object p1
.end method
