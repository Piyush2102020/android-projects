.class final Lcom/google/android/gms/internal/measurement/zzni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.2.2"


# direct methods
.method static zza(Lcom/google/android/gms/internal/measurement/zzka;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzka;->zzd()I

    move-result v1

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzka;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_90

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzka;->zza(I)B

    move-result v2

    sparse-switch v2, :sswitch_data_96

    const/16 v3, 0x20

    if-lt v2, v3, :cond_6a

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_6a

    int-to-char v2, v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 18
    :sswitch_24
    nop

    .line 5
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_2b
    nop

    .line 6
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_32
    nop

    .line 7
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_39
    nop

    .line 8
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_40
    nop

    .line 9
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_47
    nop

    .line 10
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_4e
    nop

    .line 11
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_55
    nop

    .line 12
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_5c
    nop

    .line 13
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :sswitch_63
    nop

    .line 14
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 19
    :cond_6a
    nop

    .line 15
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 14
    :cond_90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_96
    .sparse-switch
        0x7 -> :sswitch_63
        0x8 -> :sswitch_5c
        0x9 -> :sswitch_55
        0xa -> :sswitch_4e
        0xb -> :sswitch_47
        0xc -> :sswitch_40
        0xd -> :sswitch_39
        0x22 -> :sswitch_32
        0x27 -> :sswitch_2b
        0x5c -> :sswitch_24
    .end sparse-switch
.end method
