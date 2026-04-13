.class public final synthetic LB4/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld5/a;


# direct methods
.method public synthetic constructor <init>(Ld5/a;I)V
    .locals 0

    iput p2, p0, LB4/c;->a:I

    iput-object p1, p0, LB4/c;->b:Ld5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LB4/c;->a:I

    iget-object v1, p0, LB4/c;->b:Ld5/a;

    check-cast p1, Lio/realm/T;

    packed-switch v0, :pswitch_data_0

    invoke-interface {v1}, Ld5/a;->b()Ljava/lang/Object;

    invoke-virtual {p1}, Lio/realm/T;->e()V

    return-void

    :pswitch_0
    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-interface {v1}, Ld5/a;->b()Ljava/lang/Object;

    invoke-virtual {p1}, Lio/realm/T;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
