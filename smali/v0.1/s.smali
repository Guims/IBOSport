.class public final synthetic Lv0/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lv0/w;


# direct methods
.method public synthetic constructor <init>(Lv0/w;I)V
    .locals 0

    iput p2, p0, Lv0/s;->b:I

    iput-object p1, p0, Lv0/s;->q:Lv0/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lv0/s;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iget-object v1, p0, Lv0/s;->q:Lv0/w;

    iput-boolean v0, v1, Lv0/w;->R:Z

    invoke-virtual {v1}, Lv0/w;->z()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lv0/s;->q:Lv0/w;

    invoke-virtual {v0}, Lv0/w;->z()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
