.class public final LO1/a;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/res/AssetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 0

    iput p2, p0, LO1/a;->a:I

    iput-object p1, p0, LO1/a;->b:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 2

    iget p1, p0, LO1/a;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, LO1/b;

    iget-object v0, p0, LO1/a;->b:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LO1/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    :pswitch_0
    new-instance p1, LO1/b;

    iget-object v0, p0, LO1/a;->b:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LO1/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
