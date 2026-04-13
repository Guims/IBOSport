.class public final LK1/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LK1/r;->b:I

    iput-object p2, p0, LK1/r;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, LK1/r;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Lk5/c;

    new-instance v1, Lk5/b;

    invoke-direct {v1, v0}, Lk5/b;-><init>(Lk5/c;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, LK1/r;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
