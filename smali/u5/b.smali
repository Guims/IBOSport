.class public final Lu5/b;
.super Le5/h;

# interfaces
.implements Ld5/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lu5/d;


# direct methods
.method public synthetic constructor <init>(Lu5/d;Lu5/c;I)V
    .locals 0

    iput p3, p0, Lu5/b;->b:I

    iput-object p1, p0, Lu5/b;->q:Lu5/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lu5/b;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    sget-object p1, Lu5/d;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v0, p0, Lu5/b;->q:Lu5/d;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lu5/d;->f(Ljava/lang/Object;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lu5/b;->q:Lu5/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu5/d;->f(Ljava/lang/Object;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
