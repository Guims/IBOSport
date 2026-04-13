.class public final synthetic Lr0/E;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic a:Lr0/C;


# direct methods
.method public synthetic constructor <init>(Lr0/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/E;->a:Lr0/C;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 2

    iget-object v0, p0, Lr0/E;->a:Lr0/C;

    iget-object v1, v0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v1, Lr0/E;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lr0/C;->c:Ljava/lang/Object;

    check-cast v0, Lr0/e;

    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/e;->b(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
