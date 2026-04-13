.class public final synthetic Landroidx/activity/s;
.super Le5/f;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic x:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    iput p8, p0, Landroidx/activity/s;->x:I

    invoke-direct/range {p0 .. p7}, Le5/f;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/activity/s;->x:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le5/b;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/t;

    invoke-virtual {v0}, Landroidx/activity/t;->d()V

    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Le5/b;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/t;

    invoke-virtual {v0}, Landroidx/activity/t;->d()V

    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
