.class public final LL1/f;
.super LL1/a;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LL1/f;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LL1/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()LL1/i;
    .locals 1

    iget v0, p0, LL1/f;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LL1/k;

    invoke-direct {v0, p0}, LL1/k;-><init>(LL1/f;)V

    return-object v0

    :pswitch_0
    new-instance v0, LL1/e;

    invoke-direct {v0, p0}, LL1/e;-><init>(LL1/f;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
