.class final Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/K;
.implements Lu0/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private final id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

.field final synthetic this$0:Landroidx/media3/exoplayer/MediaSourceList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDrmSessionAcquired$6(Landroid/util/Pair;I)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onLoadStarted$0(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDrmKeysRemoved$10(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onLoadCanceled$2(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDrmSessionReleased$11(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onUpstreamDiscarded$4(Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onLoadCompleted$1(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method private getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/exoplayer/source/E;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/exoplayer/source/E;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {v1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$100(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;Landroidx/media3/exoplayer/source/E;)Landroidx/media3/exoplayer/source/E;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    move-object v0, p2

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$200(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onLoadError$3(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDrmKeysRestored$9(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDrmKeysLoaded$7(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic k(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDrmSessionManagerError$8(Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic l(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->lambda$onDownstreamFormatChanged$5(Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method private synthetic lambda$onDownstreamFormatChanged$5(Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1, p2}, Lq0/j;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method private synthetic lambda$onDrmKeysLoaded$7(Landroid/util/Pair;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1}, Lq0/j;->onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/E;)V

    return-void
.end method

.method private lambda$onDrmKeysRemoved$10(Landroid/util/Pair;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1}, Lq0/j;->d(ILandroidx/media3/exoplayer/source/E;)Lq0/b;

    move-result-object p1

    new-instance v1, Lq0/d;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lq0/d;-><init>(I)V

    const/16 v2, 0x402

    invoke-virtual {v0, p1, v2, v1}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    return-void
.end method

.method private synthetic lambda$onDrmKeysRestored$9(Landroid/util/Pair;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1}, Lq0/j;->onDrmKeysRestored(ILandroidx/media3/exoplayer/source/E;)V

    return-void
.end method

.method private synthetic lambda$onDrmSessionAcquired$6(Landroid/util/Pair;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1, p2}, Lq0/j;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/E;I)V

    return-void
.end method

.method private synthetic lambda$onDrmSessionManagerError$8(Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1, p2}, Lq0/j;->onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/E;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$onDrmSessionReleased$11(Landroid/util/Pair;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1}, Lq0/j;->onDrmSessionReleased(ILandroidx/media3/exoplayer/source/E;)V

    return-void
.end method

.method private synthetic lambda$onLoadCanceled$2(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1, p2, p3}, Lq0/j;->onLoadCanceled(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method private synthetic lambda$onLoadCompleted$1(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1, p2, p3}, Lq0/j;->onLoadCompleted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method private synthetic lambda$onLoadError$3(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroidx/media3/exoplayer/source/E;

    move-object v2, v0

    check-cast v2, Lq0/j;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lq0/j;->onLoadError(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V

    return-void
.end method

.method private synthetic lambda$onLoadStarted$0(Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1, p2, p3}, Lq0/j;->onLoadStarted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method

.method private lambda$onUpstreamDiscarded$4(Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Lq0/a;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/E;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lq0/j;

    invoke-virtual {v0, v1, p1, p2}, Lq0/j;->onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V

    return-void
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/A;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/media3/exoplayer/A;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/E;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/B;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/E;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/B;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/B;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILandroidx/media3/exoplayer/source/E;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/B;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/B;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/E;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/E;

    invoke-direct {v0, p0, p1, p3}, Landroidx/media3/exoplayer/E;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/E;Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/y;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/media3/exoplayer/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILandroidx/media3/exoplayer/source/E;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/B;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/B;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p1

    new-instance v0, Landroidx/media3/exoplayer/D;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/D;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V

    check-cast p1, Lk0/y;

    invoke-virtual {p1, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p1

    new-instance v0, Landroidx/media3/exoplayer/D;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/D;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V

    check-cast p1, Lk0/y;

    invoke-virtual {p1, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadError(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p1

    new-instance v0, Landroidx/media3/exoplayer/C;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/C;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;Ljava/io/IOException;Z)V

    check-cast p1, Lk0/y;

    invoke-virtual {p1, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadStarted(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p1

    new-instance v0, Landroidx/media3/exoplayer/D;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/D;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/v;Landroidx/media3/exoplayer/source/A;I)V

    check-cast p1, Lk0/y;

    invoke-virtual {p1, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/E;Landroidx/media3/exoplayer/source/A;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/E;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Lk0/l;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/A;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/media3/exoplayer/A;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/A;I)V

    check-cast p2, Lk0/y;

    invoke-virtual {p2, v0}, Lk0/y;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
