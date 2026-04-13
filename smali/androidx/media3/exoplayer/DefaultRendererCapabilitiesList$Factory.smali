.class public final Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/RendererCapabilitiesList$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/RenderersFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/Metadata;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->lambda$createRendererCapabilitiesList$1(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public static synthetic b(Lj0/c;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->lambda$createRendererCapabilitiesList$0(Lj0/c;)V

    return-void
.end method

.method private static synthetic lambda$createRendererCapabilitiesList$0(Lj0/c;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$createRendererCapabilitiesList$1(Landroidx/media3/common/Metadata;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public createRendererCapabilitiesList()Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->renderersFactory:Landroidx/media3/exoplayer/RenderersFactory;

    sget v1, Lk0/C;->a:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object v1, v2

    new-instance v2, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$1;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$1;-><init>(Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;)V

    new-instance v3, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$2;

    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory$2;-><init>(Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;)V

    new-instance v4, Landroidx/media3/exoplayer/r;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroidx/media3/exoplayer/r;-><init>(I)V

    new-instance v5, Landroidx/media3/exoplayer/r;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Landroidx/media3/exoplayer/r;-><init>(I)V

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/RenderersFactory;->createRenderers(Landroid/os/Handler;LG0/I;Lr0/l;LC0/f;Lz0/b;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;

    invoke-direct {v1, v0, v6}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;-><init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$1;)V

    return-object v1
.end method

.method public bridge synthetic createRendererCapabilitiesList()Landroidx/media3/exoplayer/RendererCapabilitiesList;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList$Factory;->createRendererCapabilitiesList()Landroidx/media3/exoplayer/DefaultRendererCapabilitiesList;

    move-result-object v0

    return-object v0
.end method
