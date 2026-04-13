.class public final LD0/t;
.super LD0/y;

# interfaces
.implements Landroidx/media3/exoplayer/RendererCapabilities$Listener;


# static fields
.field public static final j:Lp3/X;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public final e:Lx2/f;

.field public final f:Z

.field public g:LD0/l;

.field public final h:LD0/o;

.field public i:Landroidx/media3/common/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD0/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LD0/c;-><init>(I)V

    new-instance v1, Lp3/v;

    invoke-direct {v1, v0}, Lp3/v;-><init>(LD0/c;)V

    sput-object v1, LD0/t;->j:Lp3/X;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lx2/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    sget-object v2, LD0/l;->j:Ljava/lang/String;

    new-instance v2, LD0/k;

    invoke-direct {v2, p1}, LD0/k;-><init>(Landroid/content/Context;)V

    new-instance v3, LD0/l;

    invoke-direct {v3, v2}, LD0/l;-><init>(LD0/k;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, LD0/t;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iput-object v4, p0, LD0/t;->d:Landroid/content/Context;

    iput-object v0, p0, LD0/t;->e:Lx2/f;

    iput-object v3, p0, LD0/t;->g:LD0/l;

    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, LD0/t;->i:Landroidx/media3/common/AudioAttributes;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lk0/C;->O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, LD0/t;->f:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_3

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, LD0/o;

    invoke-static {v0}, LD0/m;->b(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    move-result-object v0

    invoke-direct {v2, v0}, LD0/o;-><init>(Landroid/media/Spatializer;)V

    :goto_2
    iput-object v2, p0, LD0/t;->h:LD0/o;

    :cond_3
    iget-object v0, p0, LD0/t;->g:LD0/l;

    iget-boolean v0, v0, LD0/l;->e:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static b(Landroidx/media3/exoplayer/source/t0;LD0/l;Ljava/util/HashMap;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/source/t0;->a:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lp3/J;

    invoke-virtual {v2, v1}, Lp3/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/TrackSelectionOverride;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackSelectionOverride;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lp3/H;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lp3/H;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static c(Landroidx/media3/common/Format;Ljava/lang/String;Z)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {p1}, LD0/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p0}, LD0/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    sget p2, Lk0/C;->a:I

    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(LD0/l;ILandroidx/media3/common/Format;)Z
    .locals 2

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isSpeedChangeSupportRequired:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-boolean p0, p0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->isGaplessSupportRequired:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    iget p0, p2, Landroidx/media3/common/Format;->encoderDelay:I

    if-nez p0, :cond_3

    iget p0, p2, Landroidx/media3/common/Format;->encoderPadding:I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v0

    :goto_1
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->getAudioOffloadSupport(I)I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v0
.end method

.method public static h(ILD0/x;[[[ILD0/q;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 19

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, LD0/x;->a:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, v0, LD0/x;->b:[I

    aget v5, v5, v4

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    iget-object v5, v0, LD0/x;->c:[Landroidx/media3/exoplayer/source/t0;

    aget-object v5, v5, v4

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Landroidx/media3/exoplayer/source/t0;->a:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/source/t0;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    aget-object v9, p2, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v4, v8, v9}, LD0/q;->d(ILandroidx/media3/common/TrackGroup;[I)Lp3/Y;

    move-result-object v9

    iget v11, v8, Landroidx/media3/common/TrackGroup;->length:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    :goto_2
    iget v13, v8, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v12, v13, :cond_5

    invoke-virtual {v9, v12}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LD0/r;

    invoke-virtual {v13}, LD0/r;->a()I

    move-result v14

    aget-boolean v15, v11, v12

    if-nez v15, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move/from16 v18, v2

    goto :goto_6

    :cond_1
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-static {v13}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v13

    :goto_3
    move/from16 v18, v2

    goto :goto_5

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v17, v15

    move/from16 v15, v16

    :goto_4
    iget v3, v8, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v15, v3, :cond_4

    invoke-virtual {v9, v15}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LD0/r;

    invoke-virtual {v3}, LD0/r;->a()I

    move-result v0

    move/from16 v18, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {v13, v3}, LD0/r;->b(LD0/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-boolean v17, v11, v15

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v18

    goto :goto_4

    :cond_4
    move-object v13, v14

    goto :goto_3

    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v18

    goto :goto_2

    :cond_5
    move/from16 v18, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    move/from16 v18, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LD0/r;

    iget v3, v3, LD0/r;->r:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/r;

    new-instance v3, LD0/u;

    iget-object v4, v0, LD0/r;->q:Landroidx/media3/common/TrackGroup;

    invoke-direct {v3, v2, v4, v1}, LD0/u;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    iget v0, v0, LD0/r;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/media3/common/AudioAttributes;)V
    .locals 2

    iget-object v0, p0, LD0/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/t;->i:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v1, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, LD0/t;->i:Landroidx/media3/common/AudioAttributes;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, LD0/t;->e()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()LD0/l;
    .locals 2

    iget-object v0, p0, LD0/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/t;->g:LD0/l;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, LD0/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/t;->g:LD0/l;

    iget-boolean v1, v1, LD0/l;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LD0/t;->f:Z

    if-nez v1, :cond_0

    sget v1, Lk0/C;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, LD0/t;->h:LD0/o;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, LD0/o;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, LD0/C;->a:LD0/B;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LD0/B;->onTrackSelectionsInvalidated()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i(LD0/l;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LD0/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/t;->g:LD0/l;

    invoke-virtual {v1, p1}, LD0/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, LD0/t;->g:LD0/l;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, p1, LD0/l;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LD0/t;->d:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, LD0/C;->a:LD0/B;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LD0/B;->onTrackSelectionsInvalidated()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onRendererCapabilitiesChanged(Landroidx/media3/exoplayer/Renderer;)V
    .locals 1

    iget-object p1, p0, LD0/t;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LD0/t;->g:LD0/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
