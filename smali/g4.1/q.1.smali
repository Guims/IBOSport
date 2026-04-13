.class public final Lg4/q;
.super Le5/h;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lg4/q;->b:I

    iput-object p1, p0, Lg4/q;->q:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg4/q;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg4/q;->q:Landroid/content/Context;

    sget-object v1, Lg4/A;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LE2/g;->C(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg4/q;->q:Landroid/content/Context;

    sget-object v1, Lg4/A;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LE2/g;->C(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
