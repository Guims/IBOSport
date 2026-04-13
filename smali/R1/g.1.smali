.class public final LR1/g;
.super Ljava/lang/Object;

# interfaces
.implements LI1/l;


# instance fields
.field public final synthetic a:I

.field public final b:LR1/r;


# direct methods
.method public synthetic constructor <init>(LR1/r;I)V
    .locals 0

    iput p2, p0, LR1/g;->a:I

    iput-object p1, p0, LR1/g;->b:LR1/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILI1/j;)LK1/D;
    .locals 6

    iget v0, p0, LR1/g;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance v1, LJ/l;

    iget-object v0, p0, LR1/g;->b:LR1/r;

    iget-object v2, v0, LR1/r;->d:Ljava/util/ArrayList;

    iget-object v3, v0, LR1/r;->c:LL1/g;

    invoke-direct {v1, p1, v2, v3}, LJ/l;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;LL1/g;)V

    sget-object v5, LR1/r;->j:Lh3/e;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LR1/r;->a(LJ/l;IILI1/j;LR1/q;)LR1/e;

    move-result-object p1

    return-object p1

    :pswitch_0
    move v2, p2

    move v3, p3

    move-object v4, p4

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance v1, LJ/l;

    iget-object v0, p0, LR1/g;->b:LR1/r;

    iget-object p2, v0, LR1/r;->d:Ljava/util/ArrayList;

    iget-object p3, v0, LR1/r;->c:LL1/g;

    const/4 p4, 0x7

    invoke-direct {v1, p1, p2, p3, p4}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v5, LR1/r;->j:Lh3/e;

    invoke-virtual/range {v0 .. v5}, LR1/r;->a(LJ/l;IILI1/j;LR1/q;)LR1/e;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;LI1/j;)Z
    .locals 2

    iget p2, p0, LR1/g;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HONOR"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p1

    const-wide/32 v0, 0x20000000

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    :cond_1
    const-string p1, "robolectric"

    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p1, p0, LR1/g;->b:LR1/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
