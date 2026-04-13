.class final Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/SuitableOutputChecker;


# static fields
.field private static final EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;


# instance fields
.field private controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

.field private final executor:Ljava/util/concurrent/Executor;

.field private isPreviousSelectedOutputSuitableForPlayback:Z

.field private final routeCallback:Landroid/media/MediaRouter2$RouteCallback;

.field private final router:Landroid/media/MediaRouter2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LJ/z0;->l()V

    sget-object v0, Lp3/H;->q:Lp3/F;

    sget-object v0, Lp3/Y;->t:Lp3/Y;

    invoke-static {v0}, LJ/z0;->f(Lp3/Y;)Landroid/media/RouteDiscoveryPreference$Builder;

    move-result-object v0

    invoke-static {v0}, LJ/z0;->g(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LJ/z0;->e(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    new-instance p1, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$1;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$1;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    new-instance p1, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isPreviousSelectedOutputSuitableForPlayback:Z

    return p0
.end method

.method public static synthetic access$002(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isPreviousSelectedOutputSuitableForPlayback:Z

    return p1
.end method

.method private static isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z
    .locals 1

    invoke-static {p0}, Landroidx/media3/exoplayer/c;->a(Landroid/media/MediaRoute2Info;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    const-string v1, "SuitableOutputChecker is not enabled"

    invoke-static {v0, v1}, Lk0/c;->l(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-static {v0, v1}, LJ/z0;->n(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$ControllerCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-static {v0, v1}, LJ/z0;->o(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RouteCallback;)V

    return-void
.end method

.method public enable(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    sget-object v3, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    invoke-static {v0, v1, v2, v3}, LJ/z0;->q(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    new-instance v0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;-><init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, v0}, LJ/z0;->p(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isSelectedOutputSuitableForPlayback()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isPreviousSelectedOutputSuitableForPlayback:Z

    return-void
.end method

.method public isSelectedOutputSuitableForPlayback()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    const-string v1, "SuitableOutputChecker is not enabled"

    invoke-static {v0, v1}, Lk0/c;->l(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    invoke-static {v0}, LJ/z0;->d(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/a;->c(Landroid/media/MediaRouter2$RoutingController;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/c;->b(Landroid/media/RoutingSessionInfo;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    invoke-static {v1}, LJ/z0;->d(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/c;->h(Landroid/media/MediaRouter2$RoutingController;)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->router:Landroid/media/MediaRouter2;

    invoke-static {v2}, LJ/z0;->d(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v2

    invoke-static {v2}, LJ/z0;->k(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LJ/z0;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
