.class public final synthetic LA4/h;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LA4/k;


# direct methods
.method public synthetic constructor <init>(LA4/k;I)V
    .locals 0

    iput p2, p0, LA4/h;->b:I

    iput-object p1, p0, LA4/h;->q:LA4/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LA4/h;->b:I

    check-cast p1, Ljava/lang/Boolean;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, LA4/h;->q:LA4/k;

    iget-object p1, p1, LA4/k;->h:LA4/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object v0, p0, LA4/h;->q:LA4/k;

    iget-object v0, v0, LA4/k;->g:LA4/c;

    invoke-virtual {v0, p1}, LA4/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
