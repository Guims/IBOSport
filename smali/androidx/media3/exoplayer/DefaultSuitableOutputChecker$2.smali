.class Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

.field final synthetic val$eventHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    iput-object p2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;->val$eventHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$2;->val$eventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lk0/C;->U(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
