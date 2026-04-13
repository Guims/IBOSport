.class public final LG0/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/VideoFrameProcessor$Factory;


# static fields
.field public static final a:Lo3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG0/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LG0/q;-><init>(I)V

    invoke-static {v0}, La/a;->E(Lo3/h;)Lo3/h;

    move-result-object v0

    sput-object v0, LG0/r;->a:Lo3/h;

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;
    .locals 8

    sget-object v0, LG0/r;->a:Lo3/h;

    invoke-interface {v0}, Lo3/h;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/common/VideoFrameProcessor$Factory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroidx/media3/common/VideoFrameProcessor$Factory;->create(Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLjava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)Landroidx/media3/common/VideoFrameProcessor;

    move-result-object p1

    return-object p1
.end method
