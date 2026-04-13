.class public final Landroidx/media3/exoplayer/source/o0;
.super Landroidx/media3/exoplayer/source/a;


# instance fields
.field public final h:Landroidx/media3/datasource/DataSpec;

.field public final i:Landroidx/media3/datasource/DataSource$Factory;

.field public final j:Landroidx/media3/common/Format;

.field public final k:J

.field public final l:LE0/m;

.field public final m:Z

.field public final n:Landroidx/media3/exoplayer/source/k0;

.field public final o:Landroidx/media3/common/MediaItem;

.field public p:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;LE0/m;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/media3/exoplayer/source/o0;->i:Landroidx/media3/datasource/DataSource$Factory;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v0, Landroidx/media3/exoplayer/source/o0;->k:J

    move-object/from16 v2, p3

    iput-object v2, v0, Landroidx/media3/exoplayer/source/o0;->l:LE0/m;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/o0;->m:Z

    new-instance v3, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v3}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v3

    iget-object v4, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v3

    invoke-static {v1}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem$Builder;->setTag(Ljava/lang/Object;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/source/o0;->o:Landroidx/media3/common/MediaItem;

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v8, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "text/x-unknown"

    :goto_0
    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget-object v8, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v8, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v8, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget-object v8, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget-object v8, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v8, :cond_1

    move-object v4, v8

    :cond_1
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/source/o0;->j:Landroidx/media3/common/Format;

    new-instance v4, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v4}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v1, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/source/o0;->h:Landroidx/media3/datasource/DataSpec;

    new-instance v1, Landroidx/media3/exoplayer/source/k0;

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-wide v8, v6

    invoke-direct/range {v1 .. v19}, Landroidx/media3/exoplayer/source/k0;-><init>(JJJJJJZZZLv0/n;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/o0;->n:Landroidx/media3/exoplayer/source/k0;

    return-void
.end method


# virtual methods
.method public final b()Landroidx/media3/common/MediaItem;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o0;->o:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method public final c(Landroidx/media3/exoplayer/source/E;LE0/b;J)Landroidx/media3/exoplayer/source/C;
    .locals 10

    new-instance v0, Landroidx/media3/exoplayer/source/n0;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/o0;->p:Landroidx/media3/datasource/TransferListener;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->i(Landroidx/media3/exoplayer/source/E;)LA/d;

    move-result-object v8

    iget-boolean v9, p0, Landroidx/media3/exoplayer/source/o0;->m:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/o0;->h:Landroidx/media3/datasource/DataSpec;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/o0;->i:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/o0;->j:Landroidx/media3/common/Format;

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/o0;->k:J

    iget-object v7, p0, Landroidx/media3/exoplayer/source/o0;->l:LE0/m;

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/n0;-><init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/common/Format;JLE0/m;LA/d;Z)V

    return-object v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final h(Landroidx/media3/exoplayer/source/C;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/n0;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/n0;->x:LE0/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LE0/s;->e(LE0/q;)V

    return-void
.end method

.method public final o(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/o0;->p:Landroidx/media3/datasource/TransferListener;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/o0;->n:Landroidx/media3/exoplayer/source/k0;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->p(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method
