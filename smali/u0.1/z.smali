.class public final synthetic Lu0/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:Lu0/A;

.field public final synthetic b:Lu0/d;


# direct methods
.method public synthetic constructor <init>(Lu0/A;Lu0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/z;->a:Lu0/A;

    iput-object p2, p0, Lu0/z;->b:Lu0/d;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    iget-object p1, p0, Lu0/z;->a:Lu0/A;

    iget-object p4, p0, Lu0/z;->b:Lu0/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p4, Lu0/d;->a:Lu0/g;

    iget-object p1, p1, Lu0/g;->x:Lg4/P;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
