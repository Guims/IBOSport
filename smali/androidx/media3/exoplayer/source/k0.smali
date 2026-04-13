.class public final Landroidx/media3/exoplayer/source/k0;
.super Landroidx/media3/common/Timeline;


# static fields
.field public static final n:Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Ljava/lang/Object;

.field public final l:Landroidx/media3/common/MediaItem;

.field public final m:Landroidx/media3/common/MediaItem$LiveConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/k0;->n:Ljava/lang/Object;

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    return-void
.end method

.method public constructor <init>(JJJJJJZZZLv0/n;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/k0;->a:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/k0;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/k0;->c:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/k0;->d:J

    iput-wide p7, p0, Landroidx/media3/exoplayer/source/k0;->e:J

    iput-wide p9, p0, Landroidx/media3/exoplayer/source/k0;->f:J

    iput-wide p11, p0, Landroidx/media3/exoplayer/source/k0;->g:J

    iput-boolean p13, p0, Landroidx/media3/exoplayer/source/k0;->h:Z

    iput-boolean p14, p0, Landroidx/media3/exoplayer/source/k0;->i:Z

    iput-boolean p15, p0, Landroidx/media3/exoplayer/source/k0;->j:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k0;->k:Ljava/lang/Object;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k0;->l:Landroidx/media3/common/MediaItem;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroidx/media3/exoplayer/source/k0;->m:Landroidx/media3/common/MediaItem$LiveConfiguration;

    return-void
.end method


# virtual methods
.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/k0;->n:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 8

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lk0/c;->g(II)V

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/source/k0;->n:Ljava/lang/Object;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/k0;->f:J

    neg-long v6, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/k0;->d:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public final getPeriodCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lk0/c;->g(II)V

    sget-object p1, Landroidx/media3/exoplayer/source/k0;->n:Ljava/lang/Object;

    return-object p1
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-static {v2, v1}, Lk0/c;->g(II)V

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/k0;->g:J

    iget-boolean v14, v0, Landroidx/media3/exoplayer/source/k0;->i:Z

    if-eqz v14, :cond_1

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/k0;->j:Z

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/k0;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    :goto_0
    move-wide/from16 v16, v5

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v1

    :goto_1
    sget-object v4, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    const/16 v21, 0x0

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/k0;->f:J

    iget-object v5, v0, Landroidx/media3/exoplayer/source/k0;->l:Landroidx/media3/common/MediaItem;

    iget-object v6, v0, Landroidx/media3/exoplayer/source/k0;->k:Ljava/lang/Object;

    iget-wide v7, v0, Landroidx/media3/exoplayer/source/k0;->a:J

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/k0;->b:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/k0;->c:J

    iget-boolean v13, v0, Landroidx/media3/exoplayer/source/k0;->h:Z

    iget-object v15, v0, Landroidx/media3/exoplayer/source/k0;->m:Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-wide/from16 v22, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/k0;->e:J

    const/16 v20, 0x0

    move-object/from16 v3, p2

    move-wide/from16 v18, v1

    invoke-virtual/range {v3 .. v23}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public final getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
