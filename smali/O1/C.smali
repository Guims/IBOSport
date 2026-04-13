.class public final LO1/C;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0

    iput p2, p0, LO1/C;->a:I

    iput-object p1, p0, LO1/C;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 0

    iget p1, p0, LO1/C;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, LO1/D;

    invoke-direct {p1, p0}, LO1/D;-><init>(LO1/C;)V

    return-object p1

    :pswitch_0
    new-instance p1, LO1/D;

    invoke-direct {p1, p0}, LO1/D;-><init>(LO1/C;)V

    return-object p1

    :pswitch_1
    new-instance p1, LO1/D;

    invoke-direct {p1, p0}, LO1/D;-><init>(LO1/C;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
