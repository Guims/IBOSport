.class public final synthetic Lr0/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lp5/p;

.field public final synthetic r:Lr0/m;


# direct methods
.method public synthetic constructor <init>(Lp5/p;Lr0/m;I)V
    .locals 0

    iput p3, p0, Lr0/h;->b:I

    iput-object p1, p0, Lr0/h;->q:Lp5/p;

    iput-object p2, p0, Lr0/h;->r:Lr0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lr0/h;->b:I

    iget-object v1, p0, Lr0/h;->r:Lr0/m;

    iget-object v2, p0, Lr0/h;->q:Lp5/p;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, Lr0/l;->onAudioTrackReleased(Lr0/m;)V

    return-void

    :pswitch_0
    iget-object v0, v2, Lp5/p;->r:Ljava/lang/Object;

    check-cast v0, Lr0/l;

    sget v2, Lk0/C;->a:I

    invoke-interface {v0, v1}, Lr0/l;->onAudioTrackInitialized(Lr0/m;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
