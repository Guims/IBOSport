.class public final LE2/l;
.super LG2/a;


# virtual methods
.method public final e(LD2/b;ILD2/b;)LD2/a;
    .locals 1

    invoke-virtual {p0}, LG2/a;->b()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, LG2/b;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const-string p1, "com.google.android.gms.cronet_dynamite"

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3}, LG2/b;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, LG2/a;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, LD2/b;->e(Landroid/os/IBinder;)LD2/a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final f(LD2/b;ILD2/b;)LD2/a;
    .locals 1

    invoke-virtual {p0}, LG2/a;->b()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, LG2/b;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const-string p1, "com.google.android.gms.cronet_dynamite"

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3}, LG2/b;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, LG2/a;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, LD2/b;->e(Landroid/os/IBinder;)LD2/a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
