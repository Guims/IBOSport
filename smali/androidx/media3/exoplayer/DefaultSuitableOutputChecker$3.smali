.class Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;
.super Landroid/media/MediaRouter2$ControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->enable(Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

.field final synthetic val$callback:Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    iput-object p2, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->val$callback:Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;

    invoke-direct {p0}, Landroid/media/MediaRouter2$ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->isSelectedOutputSuitableForPlayback()Z

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    invoke-static {v0}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->access$000(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->this$0:Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;->access$002(Landroidx/media3/exoplayer/DefaultSuitableOutputChecker;Z)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$3;->val$callback:Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/SuitableOutputChecker$Callback;->onSelectedOutputSuitabilityChanged(Z)V

    :cond_0
    return-void
.end method
